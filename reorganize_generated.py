import os
import re
import shutil

def reorganize():
    lib_dir = 'lib'
    # Use a more restrictive pattern for the filename to avoid matching multiple lines
    part_pattern = re.compile(r"part\s+['\"]([^/'\"\s]+\.(freezed|g)\.dart)['\"];")
    
    for root, dirs, files in os.walk(lib_dir):
        for file in files:
            if file.endswith('.dart') and not (file.endswith('.freezed.dart') or file.endswith('.g.dart')):
                file_path = os.path.join(root, file)
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                except Exception as e:
                    print(f"Error reading {file_path}: {e}")
                    continue
                
                matches = list(part_pattern.finditer(content))
                if matches:
                    print(f"Found matches in {file_path}")
                    gen_dir = os.path.join(root, 'generated')
                    
                    new_content = content
                    changed = False
                    for match in matches:
                        gen_file_name = match.group(1)
                        old_part_stmt = match.group(0)
                        print(f"  Match: {gen_file_name}")
                        
                        source_gen_path = os.path.join(root, gen_file_name)
                        dest_gen_path = os.path.join(gen_dir, gen_file_name)
                        
                        if os.path.exists(source_gen_path):
                            if not os.path.exists(gen_dir):
                                print(f"    Creating directory {gen_dir}")
                                os.makedirs(gen_dir)
                                
                            print(f"    Moving {source_gen_path} to {dest_gen_path}")
                            shutil.move(source_gen_path, dest_gen_path)
                            
                            # Update part of in generated file
                            try:
                                with open(dest_gen_path, 'r', encoding='utf-8') as gf:
                                    gen_content = gf.read()
                                
                                part_of_regex = rf"part of\s+['\"]{re.escape(file)}['\"];"
                                new_gen_content = re.sub(part_of_regex, f"part of '../{file}';", gen_content)
                                
                                if new_gen_content != gen_content:
                                    with open(dest_gen_path, 'w', encoding='utf-8') as gf:
                                        gf.write(new_gen_content)
                                    print(f"    Updated 'part of' in {dest_gen_path}")
                                else:
                                    # Try without re.escape if it's already simple
                                    # Sometimes part of uses double quotes or other things
                                    pass
                            except Exception as e:
                                print(f"    Error updating {dest_gen_path}: {e}")
                            
                            # Update part in source file
                            # Use replace but be careful not to replace things we already moved
                            # Actually since we are using the exact old_part_stmt it should be fine.
                            new_part_stmt = old_part_stmt.replace(gen_file_name, f"generated/{gen_file_name}")
                            new_content = new_content.replace(old_part_stmt, new_part_stmt)
                            changed = True
                        else:
                            print(f"    File {source_gen_path} not found!")
                    
                    if changed:
                        try:
                            with open(file_path, 'w', encoding='utf-8') as f:
                                f.write(new_content)
                            print(f"  Updated source file {file_path}")
                        except Exception as e:
                            print(f"  Error writing to {file_path}: {e}")

if __name__ == "__main__":
    reorganize()
