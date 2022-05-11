.class public Landroid/Utils/ReflectionUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFieldFromSuperClass(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v6, p2, -0x1

    if-ge v1, v6, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_2
    :goto_1
    return-object v4

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFieldFromSuperClass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFieldFromSuperClass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static varargs invokeInClass(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p2

    array-length v12, v0

    new-array v9, v12, [Ljava/lang/Class;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v13, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v2, p2, v12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v6, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v6, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    :cond_2
    :goto_2
    return-object v10

    :catch_0
    move-exception v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "runInSuperClass: error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v13, v7

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_1

    aget-object v5, v7, v12

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v6, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :catch_1
    move-exception v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "runInSuperClass: error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "runInSuperClass: error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static varargs invokeInSuperClass(Ljava/lang/Object;Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v12, p2, -0x1

    if-ge v3, v12, :cond_1

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_4

    move-object/from16 v0, p3

    array-length v12, v0

    new-array v9, v12, [Ljava/lang/Class;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v2, p3, v12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v9, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v6, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    move-object/from16 v0, p3

    invoke-virtual {v6, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    :cond_4
    :goto_3
    return-object v10

    :catch_0
    move-exception v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "runInSuperClass: error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v13, v7

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v13, :cond_3

    aget-object v5, v7, v12

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v6, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_1
    move-exception v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "runInSuperClass: error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "runInSuperClass: error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static isEnableMethodInSuperClass(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static setFieldForSuperClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Z
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v6, p3, -0x1

    if-ge v1, v6, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v5, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    :cond_2
    :goto_1
    return v4

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFieldForSuperClass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setFieldForSuperClass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
