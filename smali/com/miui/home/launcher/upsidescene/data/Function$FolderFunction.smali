.class public Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;
.super Lcom/miui/home/launcher/upsidescene/data/Function;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderFunction"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V
    .locals 1

    const/4 v0, 0x2

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-void
.end method


# virtual methods
.method public getComponentNames(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    const-string v1, "\\;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 264
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->params:Ljava/util/HashMap;

    const-string v1, "folder_name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 251
    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setComponentNames(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 272
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->params:Ljava/util/HashMap;

    const-string v1, "folder_name"

    invoke-static {p1}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
