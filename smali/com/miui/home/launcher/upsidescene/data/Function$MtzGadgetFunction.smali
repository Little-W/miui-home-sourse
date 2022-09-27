.class public Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;
.super Lcom/miui/home/launcher/upsidescene/data/Function;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtzGadgetFunction"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V
    .locals 3

    const/4 v0, 0x6

    .line 389
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    .line 390
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMtzRelativePath()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setMtzRelativePath(Ljava/lang/String;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iput-object p1, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    return-void
.end method
