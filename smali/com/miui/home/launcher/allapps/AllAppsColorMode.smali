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

    .line 14
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$1;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 34
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$2;

    const-string v1, "DARK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 54
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;

    const-string v1, "SYSTEM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/4 v0, 0x3

    .line 13
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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/miui/home/launcher/allapps/AllAppsColorMode$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 13
    const-class v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->$VALUES:[Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method


# virtual methods
.method public getAppSelectInputHintColor(Landroid/content/Context;I)I
    .locals 0

    .line 219
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060066

    .line 220
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060065

    .line 222
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getAppSelectInputLineColor(Landroid/content/Context;I)I
    .locals 0

    .line 227
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060068

    .line 228
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060067

    .line 230
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 211
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060026

    .line 212
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f060025

    .line 214
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getAppTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 83
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06002a

    .line 84
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060029

    .line 86
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getBackgroundColor(Landroid/content/Context;I)I
    .locals 0

    .line 75
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0601f3

    .line 76
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f0601f2

    .line 78
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

    const p2, 0x7f060084

    .line 200
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    .line 202
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f060086

    .line 203
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_1
    const p2, 0x7f060085

    .line 205
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getCategoryTitleNormalColor(Landroid/content/Context;I)I
    .locals 0

    .line 191
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060083

    .line 192
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060082

    .line 194
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getDividerColor(Landroid/content/Context;I)I
    .locals 0

    .line 107
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06002c

    .line 108
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06002b

    .line 110
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getEditIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 243
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f08013d

    .line 244
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f08013c

    .line 246
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPreviewBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 171
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f080290

    .line 172
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f08028f

    .line 174
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 91
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06001f

    .line 92
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06001e

    .line 94
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getScrollerTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 115
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f06002f

    .line 116
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f06002e

    .line 118
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchBarBackgroundResource(I)I
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080095

    return p1

    :cond_0
    const p1, 0x7f080094

    return p1
.end method

.method public getSearchBarIconTintColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 131
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0601fd

    .line 132
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f0601fc

    .line 134
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getSearchBarInputClearColor(Landroid/content/Context;I)I
    .locals 0

    .line 155
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0600b8

    .line 156
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f0600b7

    .line 158
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchBarInputHintColor(Landroid/content/Context;I)I
    .locals 0

    .line 147
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0601fb

    .line 148
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f0601fa

    .line 150
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchBarInputTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 139
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060201

    .line 140
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060200

    .line 142
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 163
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f08025d

    .line 164
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f08025c

    .line 166
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getSecondaryTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 99
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060024

    .line 100
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060023

    .line 102
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getSettingButtonColor(Landroid/content/Context;I)I
    .locals 0

    .line 183
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060028

    .line 184
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1

    :cond_0
    const p2, 0x7f060027

    .line 186
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getTextClearIconResource(I)I
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f08014b

    return p1

    :cond_0
    const p1, 0x7f08014a

    return p1
.end method

.method public abstract isLightMode(I)Z
.end method
