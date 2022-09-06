.class public abstract enum Lcom/miui/home/launcher/allapps/AllAppsColorMode;
.super Ljava/lang/Enum;
.source "AllAppsColorMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/allapps/AllAppsColorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field public static final enum DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field public static final enum LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field public static final enum SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$1;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 36
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$2;

    const-string v1, "DARK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 56
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;

    const-string v1, "SYSTEM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->$VALUES:[Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/miui/home/launcher/allapps/AllAppsColorMode$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 15
    const-class v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->$VALUES:[Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method


# virtual methods
.method public getAppSelectInputHintColor(Landroid/content/Context;I)I
    .locals 0

    .line 234
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06006c

    .line 235
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06006b

    .line 237
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getAppSelectInputLineColor(Landroid/content/Context;I)I
    .locals 0

    .line 242
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06006e

    .line 243
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06006d

    .line 245
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 226
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060028

    .line 227
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f060027

    .line 229
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getAppTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 90
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06002c

    .line 91
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06002b

    .line 93
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getBackgroundColor(Landroid/content/Context;I)I
    .locals 0

    .line 82
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060580

    .line 83
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06057f

    .line 85
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getCategoryIndicatorColor(Landroid/content/Context;I)I
    .locals 2

    int-to-float v0, p2

    const/high16 v1, 0x42fd0000    # 126.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const p2, 0x7f060093

    .line 215
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 217
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f060095

    .line 218
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_1
    const p2, 0x7f060094

    .line 220
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getCategoryTitleNormalColor(Landroid/content/Context;I)I
    .locals 0

    .line 206
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060092

    .line 207
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060091

    .line 209
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getDividerColor(Landroid/content/Context;I)I
    .locals 0

    .line 114
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06002e

    .line 115
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06002d

    .line 117
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getEditIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 258
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f080294

    .line 259
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f080293

    .line 261
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getFastScrollerPopupDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 274
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 275
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f080299

    .line 276
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f080297

    .line 278
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 280
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f080298

    .line 281
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    const p2, 0x7f080296

    .line 283
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPreviewBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getPreviewImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p3, :cond_1

    .line 179
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0806c1

    .line 180
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f0806bf

    .line 182
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 185
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f0806c0

    .line 186
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_2
    const p2, 0x7f0806be

    .line 188
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 98
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060021

    .line 99
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060020

    .line 101
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getScrollerTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 122
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060032

    .line 123
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060031

    .line 125
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchBarBackgroundResource(I)I
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080198

    return p1

    :cond_0
    const p1, 0x7f080197

    return p1
.end method

.method public getSearchBarIconTintColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 138
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06058a

    .line 139
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f060589

    .line 141
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getSearchBarInputClearColor(Landroid/content/Context;I)I
    .locals 0

    .line 162
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060101

    .line 163
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060100

    .line 165
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchBarInputHintColor(Landroid/content/Context;I)I
    .locals 0

    .line 154
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060588

    .line 155
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060587

    .line 157
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchBarInputTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 146
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06058e

    .line 147
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06058d

    .line 149
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 170
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f080684

    .line 171
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f080683

    .line 173
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getSecondaryTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 106
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060026

    .line 107
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060025

    .line 109
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSettingButtonColor(Landroid/content/Context;I)I
    .locals 0

    .line 198
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06002a

    .line 199
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060029

    .line 201
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSettingsDrawable(Landroid/content/Context;I)I
    .locals 0

    .line 266
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060124

    .line 267
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060123

    .line 269
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getTextClearIconResource(I)I
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0802af

    return p1

    :cond_0
    const p1, 0x7f0802ae

    return p1
.end method

.method public abstract isLightMode(I)Z
.end method
