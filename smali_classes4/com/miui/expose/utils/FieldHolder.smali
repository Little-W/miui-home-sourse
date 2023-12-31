.class public Lcom/miui/expose/utils/FieldHolder;
.super Ljava/lang/Object;
.source "FieldHolder.java"


# instance fields
.field private volatile field:Ljava/lang/reflect/Field;

.field private fieldType:Ljava/lang/Object;

.field private volatile initialized:Z

.field private name:Ljava/lang/String;

.field private type:Lcom/miui/expose/utils/ClassHolder;


# direct methods
.method public constructor <init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ClassHolder;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/expose/utils/FieldHolder;->type:Lcom/miui/expose/utils/ClassHolder;

    .line 20
    iput-object p2, p0, Lcom/miui/expose/utils/FieldHolder;->name:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/miui/expose/utils/FieldHolder;->fieldType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/expose/utils/ClassHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/expose/utils/FieldHolder;->type:Lcom/miui/expose/utils/ClassHolder;

    .line 14
    iput-object p2, p0, Lcom/miui/expose/utils/FieldHolder;->name:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/miui/expose/utils/FieldHolder;->fieldType:Ljava/lang/Object;

    return-void
.end method

.method private buildExceptionMessage(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/miui/expose/utils/FieldHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {p0}, Lcom/miui/expose/utils/FieldHolder;->resolveType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is not found in "

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v2, p0, Lcom/miui/expose/utils/FieldHolder;->type:Lcom/miui/expose/utils/ClassHolder;

    invoke-virtual {v2}, Lcom/miui/expose/utils/ClassHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "; "

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "do you mean "

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object p0, p0, Lcom/miui/expose/utils/FieldHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureInitialized()V
    .locals 4

    .line 57
    iget-boolean v0, p0, Lcom/miui/expose/utils/FieldHolder;->initialized:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/miui/expose/utils/FieldHolder;->initialized:Z

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/miui/expose/utils/FieldHolder;->type:Lcom/miui/expose/utils/ClassHolder;

    invoke-virtual {v1}, Lcom/miui/expose/utils/ClassHolder;->get()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/expose/utils/FieldHolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/expose/utils/FieldHolder;->resolveType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iput-object v1, p0, Lcom/miui/expose/utils/FieldHolder;->field:Ljava/lang/reflect/Field;

    .line 75
    iget-object p0, p0, Lcom/miui/expose/utils/FieldHolder;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/miui/expose/utils/ReflectiveOperationError;

    new-instance v2, Ljava/lang/NoSuchFieldException;

    .line 72
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/expose/utils/FieldHolder;->buildExceptionMessage(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p0

    .line 64
    new-instance v0, Lcom/miui/expose/utils/ReflectiveOperationError;

    invoke-direct {v0, p0}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/miui/expose/utils/FieldHolder;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 77
    :cond_2
    new-instance v0, Lcom/miui/expose/utils/ReflectiveOperationError;

    new-instance v1, Ljava/lang/NoSuchFieldException;

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, v2}, Lcom/miui/expose/utils/FieldHolder;->buildExceptionMessage(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private resolveType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/miui/expose/utils/FieldHolder;->fieldType:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 52
    :cond_0
    check-cast p0, Lcom/miui/expose/utils/ClassHolder;

    invoke-virtual {p0}, Lcom/miui/expose/utils/ClassHolder;->get()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/expose/utils/FieldHolder;->ensureInitialized()V

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/miui/expose/utils/FieldHolder;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Lcom/miui/expose/utils/ReflectiveOperationError;

    invoke-direct {p1, p0}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
