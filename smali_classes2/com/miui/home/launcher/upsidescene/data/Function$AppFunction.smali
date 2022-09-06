.class public Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;
.super Lcom/miui/home/launcher/upsidescene/data/Function;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppFunction"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V
    .locals 1

    const/4 v0, 0x1

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public isShowIcon()Z
    .locals 3

    const-string v0, "is_show_icon"

    .line 227
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$000(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;Z)Z

    move-result v0

    return v0
.end method

.method public isShowTitle()Z
    .locals 3

    const-string v0, "is_show_title"

    .line 231
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$000(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;Z)Z

    move-result v0

    return v0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    return-void
.end method
