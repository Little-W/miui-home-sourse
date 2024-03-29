.class public Lcom/miui/blur/sdk/backdrop/BlurStyle;
.super Ljava/lang/Object;
.source "BlurStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;,
        Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;
    }
.end annotation


# static fields
.field private static final BACKGROUND_BLUR_SUPPORTED:Z

.field public static final DEFAULT_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field private static final DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final HEAVY_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final HEAVY_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final THIN_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final THIN_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;


# instance fields
.field private final mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

.field private final mBlurRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle;-><init>(I)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 13
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->GOOGLE_BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 15
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v3, -0x7ba7a7a8

    sget-object v4, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 17
    invoke-virtual {v0, v3, v4}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v3, 0x40e3e3e3

    .line 18
    invoke-virtual {v0, v3, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :goto_0
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->THIN_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 20
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    const/16 v3, 0xa

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>()V

    .line 21
    invoke-virtual {v0, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v4, -0x709f9fa0

    sget-object v5, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 22
    invoke-virtual {v0, v4, v5}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v4, -0x5c0d0d0e

    .line 23
    invoke-virtual {v0, v4, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :goto_1
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 25
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    const v4, 0x75737373

    const/16 v5, 0xc

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>()V

    .line 26
    invoke-virtual {v0, v5}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    sget-object v6, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 27
    invoke-virtual {v0, v4, v6}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v6, -0x330a0a0b    # -1.2895428E8f

    .line 28
    invoke-virtual {v0, v6, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :goto_2
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->HEAVY_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 30
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>()V

    .line 31
    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v1, 0x618a8a8a

    sget-object v6, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 32
    invoke-virtual {v0, v1, v6}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v1, 0x4d424242

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :goto_3
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->THIN_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 35
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>()V

    .line 36
    invoke-virtual {v0, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 37
    invoke-virtual {v0, v4, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v1, -0x75d9d9da    # -7.999784E-33f

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :goto_4
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 40
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>()V

    .line 41
    invoke-virtual {v0, v5}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v1, 0x7f5c5c5c

    sget-object v3, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 42
    invoke-virtual {v0, v1, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    const v1, -0x40e0e0e1

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :goto_5
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->HEAVY_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    return-void
.end method

.method varargs constructor <init>(I[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    .line 57
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/blur/sdk/backdrop/BlurStyle;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/blur/sdk/backdrop/BlurStyle;)[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 11
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->BACKGROUND_BLUR_SUPPORTED:Z

    return v0
.end method

.method static synthetic access$300()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 1

    .line 11
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-object v0
.end method


# virtual methods
.method final getBlurRadius()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    return p0
.end method

.method final getConfigs()[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    return-object p0
.end method
