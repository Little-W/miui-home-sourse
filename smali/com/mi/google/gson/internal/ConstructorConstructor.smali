.class public final Lcom/mi/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;


# instance fields
.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/mi/google/gson/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/mi/google/gson/InstanceCreator<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/mi/google/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/mi/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    new-instance v0, Lcom/mi/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {v0, p0, p1}, Lcom/mi/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/mi/google/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/mi/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$4;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/mi/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {p2, p0, p1}, Lcom/mi/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    return-object p2

    :cond_1
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$6;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_2
    const-class p1, Ljava/util/Queue;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$7;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$8;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_5
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_6
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$11;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_7
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_8

    const-class p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/mi/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/mi/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$12;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_8
    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$13;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/internal/ConstructorConstructor$13;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;)V

    return-object p1

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/mi/google/gson/internal/ObjectConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/mi/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/mi/google/gson/internal/ConstructorConstructor$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/mi/google/gson/internal/ConstructorConstructor$14;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/internal/ObjectConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/mi/google/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mi/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcom/mi/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/google/gson/InstanceCreator;

    if-eqz v1, :cond_0

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/mi/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Lcom/mi/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/mi/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/google/gson/InstanceCreator;

    if-eqz v1, :cond_1

    new-instance p1, Lcom/mi/google/gson/internal/ConstructorConstructor$2;

    invoke-direct {p1, p0, v1, v0}, Lcom/mi/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/mi/google/gson/internal/ConstructorConstructor;Lcom/mi/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/mi/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/mi/google/gson/internal/ObjectConstructor;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/mi/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/mi/google/gson/internal/ObjectConstructor;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/mi/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/mi/google/gson/internal/ObjectConstructor;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mi/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
