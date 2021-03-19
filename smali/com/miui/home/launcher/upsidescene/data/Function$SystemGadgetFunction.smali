.class public Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;
.super Lcom/miui/home/launcher/upsidescene/data/Function;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/data/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemGadgetFunction"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V
    .locals 1

    const/4 v0, 0x4

    .line 311
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-void
.end method


# virtual methods
.method public getGadgetId()I
    .locals 2

    const-string v0, "clear_button"

    .line 315
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    return v0

    :cond_0
    const-string v0, "clock_1x2"

    .line 317
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const-string v0, "clock_1x4"

    .line 319
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    return v0

    :cond_2
    const-string v0, "clock_2x4"

    .line 321
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    const-string v0, "clock_3x4"

    .line 323
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    return v0

    :cond_4
    const-string v0, "global_search"

    .line 325
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    const-string v0, "player"

    .line 327
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, -0x1

    return v0
.end method

.method public getId()I
    .locals 3

    const-string v0, "_id"

    .line 335
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$300(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)I

    move-result v0

    return v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->params:Ljava/util/HashMap;

    const-string v1, "resource_path"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setGadgetInfo(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 380
    :pswitch_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown gadgetId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 352
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v0, "clear_button"

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v0, "clock_3x4"

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    goto :goto_0

    .line 360
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v0, "clock_1x4"

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    goto :goto_0

    .line 364
    :pswitch_4
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v0, "clock_2x4"

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    goto :goto_0

    .line 356
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v0, "clock_1x2"

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    goto :goto_0

    .line 372
    :pswitch_6
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v0, "global_search"

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    goto :goto_0

    .line 376
    :pswitch_7
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v0, "player"

    iput-object v0, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->data:Ljava/lang/String;

    .line 382
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->params:Ljava/util/HashMap;

    const-string v0, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
