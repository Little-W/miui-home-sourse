.class public Lcom/market/sdk/reflect/Method;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Method"


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/market/sdk/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static varargs of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/market/sdk/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/market/sdk/reflect/Method;"
        }
    .end annotation

    new-instance p0, Lcom/market/sdk/reflect/Method;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/market/sdk/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/market/sdk/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/market/sdk/reflect/ReflectTool;->parseTypesFromSignature(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-instance p1, Lcom/market/sdk/reflect/Method;

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/Method;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/NoSuchClassException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/market/sdk/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/market/sdk/reflect/NoSuchClassException;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/NoSuchClassException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/IllegalArgumentException;
        }
    .end annotation

    iget-object p1, p0, Lcom/market/sdk/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Lcom/market/sdk/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/market/sdk/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/market/sdk/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/market/sdk/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_1
    return p1
.end method

.method public varargs invokeDouble(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/market/sdk/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 p1, 0x0

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    instance-of p3, p0, Ljava/lang/Double;

    if-eqz p3, :cond_1

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public varargs invokeFloat(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")F"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/market/sdk/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    instance-of p2, p0, Ljava/lang/Double;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_1
    return p1
.end method

.method public varargs invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/market/sdk/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_0

    return p1

    :cond_0
    instance-of p2, p0, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    return p1
.end method

.method public varargs invokeLong(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/market/sdk/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 p1, -0x1

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    instance-of p3, p0, Ljava/lang/Long;

    if-eqz p3, :cond_1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public varargs invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market/sdk/reflect/IllegalArgumentException;
        }
    .end annotation

    iget-object p1, p0, Lcom/market/sdk/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Lcom/market/sdk/reflect/Method;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/market/sdk/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/market/sdk/reflect/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/market/sdk/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
