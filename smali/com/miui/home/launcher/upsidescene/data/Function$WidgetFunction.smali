.class public Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;
.super Lcom/miui/home/launcher/upsidescene/data/Function;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetFunction"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V
    .locals 1

    const/4 v0, 0x5

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 3

    const-string v0, "_id"

    .line 290
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$300(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)I

    move-result v0

    return v0
.end method

.method public getProviderComponent()Landroid/content/ComponentName;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->params:Ljava/util/HashMap;

    const-string v1, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
