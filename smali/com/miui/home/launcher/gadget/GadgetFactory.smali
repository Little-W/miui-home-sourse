.class public Lcom/miui/home/launcher/gadget/GadgetFactory;
.super Ljava/lang/Object;
.source "GadgetFactory.java"


# static fields
.field private static final GADGET_ID_LIST:[Ljava/lang/Integer;

.field private static final ICON_STYLE_ID_LIST:[I

.field private static sMtzGadgetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xc

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x6

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/16 v2, 0x8

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    .line 46
    new-array v0, v4, [I

    aput v1, v0, v3

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->ICON_STYLE_ID_LIST:[I

    return-void
.end method

.method public static createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 191
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->isMtzGadget()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    new-instance v0, Lcom/miui/home/launcher/gadget/MtzGadget;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/gadget/MtzGadget;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "support_power_clean"

    const/4 v2, 0x1

    .line 198
    invoke-static {p0, v1, v2}, Lcom/miui/home/library/utils/MiuiFeatureUtils;->isLocalFeatureSupported(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v0, Lcom/miui/home/launcher/gadget/PowerClearButton;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/PowerClearButton;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 209
    :pswitch_2
    new-instance v0, Lcom/miui/home/launcher/gadget/GoogleSearch;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/GoogleSearch;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 195
    :pswitch_3
    new-instance v0, Lcom/miui/home/launcher/gadget/NormalClearButton;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/NormalClearButton;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 206
    :pswitch_4
    new-instance v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;-><init>(Landroid/content/Context;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 221
    :cond_2
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createGadgetForSnapshot(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 228
    check-cast p0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object p0

    .line 230
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;-><init>(Landroid/content/Context;Z)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    return-object v0
.end method

.method public static getAllGadgetNum()I
    .locals 2

    .line 94
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v0, v0

    return v0

    .line 97
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v1, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public static getClockTypeFromGadgetId(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "3x4"

    return-object p0

    :pswitch_1
    const-string p0, "1x4"

    return-object p0

    :pswitch_2
    const-string p0, "2x4"

    return-object p0

    :pswitch_3
    const-string p0, "2x2"

    return-object p0

    :pswitch_4
    const-string p0, "1x2"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 10

    const/4 v0, 0x6

    const/4 v8, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    .line 175
    :cond_0
    new-instance v9, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x7f1001fe

    const v5, 0x7f080187

    const v6, 0x7f080186

    const/4 v7, 0x2

    move-object v0, v9

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    .line 176
    invoke-virtual {v9, v8}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v9, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const v4, 0x7f1001fe

    const v5, 0x7f080187

    const v6, 0x7f080186

    const/4 v7, 0x2

    move-object v0, v9

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    .line 172
    invoke-virtual {v9, v8}, Lcom/miui/home/launcher/gadget/GadgetInfo;->setIsDualClock(Z)V

    :goto_0
    return-object v9
.end method

.method public static getGadgeInfo(ILjava/lang/String;)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 2

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getMtzInfo(Landroid/net/Uri;)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    :cond_0
    if-ge p0, v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGadgetDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "gadget"

    .line 55
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGadgetInfoByIndex(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 2

    if-ltz p0, :cond_2

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getAllGadgetNum()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 123
    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    .line 125
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    array-length v0, v0

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMtzInfo(Landroid/net/Uri;)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 3

    .line 101
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 103
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getMtzUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->clone()Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    new-instance p0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    return-object p0
.end method

.method public static final getNoMtzGadgetInfos()[Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 4

    .line 86
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v0, v0, [Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x0

    .line 87
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/gadget/GadgetFactory;->GADGET_ID_LIST:[Ljava/lang/Integer;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 88
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;
    .locals 9

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 146
    :pswitch_1
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f100208

    const v5, 0x7f080195

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto/16 :goto_0

    .line 161
    :pswitch_2
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v4, 0x7f100200

    const v5, 0x7f080190

    const v6, 0x7f080191

    const/4 v7, 0x5

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    .line 143
    :pswitch_3
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f1001f8

    const v5, 0x7f080182

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    .line 158
    :pswitch_4
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x7f1001fd

    const v5, 0x7f080187

    const v6, 0x7f080189

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    .line 152
    :pswitch_5
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v4, 0x7f1001fd

    const v5, 0x7f080187

    const v6, 0x7f080188

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    .line 155
    :pswitch_6
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x4

    const/4 v3, 0x2

    const v4, 0x7f1001fd

    const v5, 0x7f080187

    const v6, 0x7f080188

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    goto :goto_0

    .line 149
    :pswitch_7
    new-instance v8, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f1001fd

    const v5, 0x7f080185

    const/4 v6, -0x1

    const/4 v7, 0x2

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(IIIIIII)V

    :goto_0
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getThemeClockGadgetInfo(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;
    .locals 10

    .line 183
    new-instance v9, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x2

    const v4, 0x7f1001fb

    const v5, 0x7f080187

    const v6, 0x7f080188

    const/4 v7, 0x2

    move-object v0, v9

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;-><init>(IIIIIIILcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)V

    return-object v9
.end method

.method public static loadMtzGadgetList()V
    .locals 6

    .line 60
    sget-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/theme/default/gadgets"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 65
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mtz"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    new-instance v4, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5}, Lcom/miui/home/launcher/gadget/GadgetInfo;-><init>(I)V

    .line 68
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/gadget/GadgetInfo;->loadMtzGadgetFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    sget-object v3, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static resetMtzGadgetList()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/miui/home/launcher/gadget/GadgetFactory;->sMtzGadgetList:Ljava/util/ArrayList;

    return-void
.end method

.method public static updateGadgetBackup(Landroid/content/Context;)V
    .locals 1

    .line 239
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/DualClockUtils;->updateBackup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->updateBackup(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
