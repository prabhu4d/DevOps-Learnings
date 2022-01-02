# Docker

Fundamentals and Practices

- use cache for better performance
- alpine version is less size

## Commands

1. list of process
   - docker ps
2. list all images
   - docker images
3. to pull image
   - docker pull {image_name}
4. to run container
   - docker run {image_name}
5. running container in detached mode
   - docker run -d {image_name}
6. mapping port
   - docker run -p {machine_port}:{container_port} {image_name}
7. stop container
   - docker stop {container_id OR container_name}
8. exposing multiple ports
   - docker run -p {machine_port}:{container_port} -p {machine_port}:{container_port} {image_name}
9. start a container
   - docker start {container_id OR container_name}
10. listing all the containers
    - docker ps -a
11. deleting container
    - docker rm {container_id}
12. Deleting all stopped container
    - docker rm $(docker ps -aq)
13. Deleting all container
    - docker rm -f $(docker ps -aq)
14. assigning name to container
    - docker run --name {name} {image_name}
15. pretty print
    - docker ps --format="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n"
16. mounting volumes to container (default write)
    - docker run -v {host_dir}:{container_dir} {image_name}
17. mounting volumes to container (read only)
    - docker run -v {host_dir}:{container_dir}:ro {image_name}
18. Executing commands inside the container
    - docker exec -it {container_name} bash
19. sharing volumes between container
    - docker run --volumes-from {volume_container_name} {container_name}
20. Build Images
    - docker build --tag {name}:{tag} .
    - . indicates the Dockerfile present in cwd
