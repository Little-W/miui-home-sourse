.class public Lcom/miui/expose/utils/ClassHolder;
.super Ljava/lang/Object;
.source "ClassHolder.java"


# instance fields
.field private volatile initialized:Z

.field private name:Ljava/lang/String;

.field private volatile type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/expose/utils/ClassHolder;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 23
    iget-boolean v0, p0, Lcom/miui/expose/utils/ClassHolder;->initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/miui/expose/utils/ClassHolder;->initialized:Z

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/miui/expose/utils/ClassHolder;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/expose/utils/ClassHolder;->type:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Lcom/miui/expose/utils/ReflectiveOperationError;

    invoke-direct {v0, p0}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/miui/expose/utils/ClassHolder;->type:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/miui/expose/utils/ClassHolder;->type:Ljava/lang/Class;

    return-object p0

    .line 32
    :cond_1
    new-instance v0, Lcom/miui/expose/utils/ReflectiveOperationError;

    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/expose/utils/ClassHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") not found."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ReflectiveOperationError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/expose/utils/ClassHolder;->name:Ljava/lang/String;

    return-object p0
.end method
