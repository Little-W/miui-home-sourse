.class public Lcom/miui/expose/utils/MethodHolder;
.super Ljava/lang/Object;
.source "MethodHolder.java"


# instance fields
.field private volatile initialized:Z

.field private volatile method:Ljava/lang/reflect/Method;

.field private name:Ljava/lang/String;

.field private parameterTypes:Lcom/miui/expose/utils/ParameterTypes;

.field private type:Lcom/miui/expose/utils/ClassHolder;


# direct methods
.method public constructor <init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/expose/utils/MethodHolder;->type:Lcom/miui/expose/utils/ClassHolder;

    .line 15
    iput-object p2, p0, Lcom/miui/expose/utils/MethodHolder;->name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/miui/expose/utils/MethodHolder;->parameterTypes:Lcom/miui/expose/utils/ParameterTypes;

    return-void
.end method

.method private buildExceptionMessage()Ljava/lang/String;
    .locals 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/miui/expose/utils/MethodHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/miui/expose/utils/MethodHolder;->parameterTypes:Lcom/miui/expose/utils/ParameterTypes;

    invoke-interface {v1}, Lcom/miui/expose/utils/ParameterTypes;->get()[Ljava/lang/Class;

    move-result-object v1

    .line 53
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 54
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 55
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    const-string v3, ", "

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not found in "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object p0, p0, Lcom/miui/expose/utils/MethodHolder;->type:Lcom/miui/expose/utils/ClassHolder;

    invoke-virtual {p0}, Lcom/miui/expose/utils/ClassHolder;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 24
    iget-boolean v0, p0, Lcom/miui/expose/utils/MethodHolder;->initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/miui/expose/utils/MethodHolder;->initialized:Z

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/miui/expose/utils/MethodHolder;->parameterTypes:Lcom/miui/expose/utils/ParameterTypes;

    invoke-interface {v1}, Lcom/miui/expose/utils/ParameterTypes;->get()[Ljava/lang/Class;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/miui/expose/utils/MethodHolder;->type:Lcom/miui/expose/utils/ClassHolder;

    invoke-virtual {v2}, Lcom/miui/expose/utils/ClassHolder;->get()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/expose/utils/MethodHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/expose/utils/MethodHolder;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    iget-object v1, p0, Lcom/miui/expose/utils/MethodHolder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Lcom/miui/expose/utils/ReflectiveOperationError;

    invoke-direct {p1, p0}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/miui/expose/utils/MethodHolder;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 42
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/miui/expose/utils/MethodHolder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 44
    new-instance p1, Lcom/miui/expose/utils/ReflectiveOperationError;

    invoke-direct {p1, p0}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Lcom/miui/expose/utils/ReflectiveOperationError;

    new-instance p2, Ljava/lang/NoSuchMethodException;

    .line 38
    invoke-direct {p0}, Lcom/miui/expose/utils/MethodHolder;->buildExceptionMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
