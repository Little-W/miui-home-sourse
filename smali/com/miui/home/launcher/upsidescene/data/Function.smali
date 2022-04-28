.class public Lcom/miui/home/launcher/upsidescene/data/Function;
.super Ljava/lang/Object;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;,
        Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;,
        Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;,
        Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;,
        Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;,
        Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;,
        Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;
    }
.end annotation


# instance fields
.field mType:I

.field mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/data/Function;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    .line 50
    iput p2, p0, Lcom/miui/home/launcher/upsidescene/data/Function;->mType:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;Z)Z
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/data/Function;->getBooleanFromParams(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/miui/home/launcher/upsidescene/data/Function;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/miui/home/launcher/upsidescene/data/Function;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)I
    .locals 0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/data/Function;->getIntFromParams(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)I

    move-result p0

    return p0
.end method

.method public static createFunction(I)Lcom/miui/home/launcher/upsidescene/data/Function;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown function type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v1, "toggle:"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object p0

    .line 98
    :pswitch_1
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v1, "mtz_gadget:"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object p0

    .line 95
    :pswitch_2
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v1, "widget:"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object p0

    .line 92
    :pswitch_3
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v1, "system_gadget:"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object p0

    .line 89
    :pswitch_4
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function;

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v1, "drawer:"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-object p0

    .line 86
    :pswitch_5
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v1, "folder:"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object p0

    .line 83
    :pswitch_6
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;

    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    const-string v1, "app:"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object p0

    .line 80
    :pswitch_7
    new-instance p0, Lcom/miui/home/launcher/upsidescene/data/Function;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBooleanFromParams(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;Z)Z
    .locals 0

    .line 200
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->params:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 202
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getIntFromParams(Ljava/lang/String;Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)I
    .locals 0

    .line 206
    iget-object p1, p1, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->params:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 208
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/miui/home/launcher/upsidescene/data/Function;
    .locals 4

    .line 54
    invoke-static {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->parse(Ljava/lang/String;)Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 55
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "app:"

    .line 57
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object v0

    :cond_1
    const-string v1, "folder:"

    .line 59
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object v0

    :cond_2
    const-string v1, "drawer:"

    .line 61
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-object v0

    :cond_3
    const-string v1, "system_gadget:"

    .line 63
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object v0

    :cond_4
    const-string v1, "widget:"

    .line 65
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object v0

    :cond_5
    const-string v1, "mtz_gadget:"

    .line 67
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object v0

    :cond_6
    const-string v1, "toggle:"

    .line 69
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    new-instance v0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;)V

    return-object v0

    :cond_7
    const-string v1, "FreeStyle.Function"

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown function type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/miui/home/launcher/upsidescene/data/Function;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-object v1

    .line 56
    :cond_8
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/upsidescene/data/Function;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/upsidescene/data/Function;-><init>(Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;I)V

    return-object v1
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/data/Function;->mUrlData:Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function$UrlData;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
