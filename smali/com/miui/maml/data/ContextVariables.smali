.class public Lcom/miui/maml/data/ContextVariables;
.super Ljava/lang/Object;
.source "ContextVariables.java"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 64
    :cond_0
    instance-of v1, p1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    return-object v0

    .line 67
    :cond_1
    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 34
    :cond_0
    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_1

    return-object v0

    .line 37
    :cond_1
    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 44
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return-object v0

    .line 47
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 54
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_1

    return-object v0

    .line 57
    :cond_1
    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_1
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/miui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
