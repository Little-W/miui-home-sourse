.class public Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;
.super Ljava/lang/Object;
.source "BlurStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/blur/sdk/backdrop/BlurStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBlendConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mBlendConfigs:Ljava/util/List;

    const/16 v0, 0xa

    .line 71
    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mRadius:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/blur/sdk/backdrop/BlurStyle;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mBlendConfigs:Ljava/util/List;

    .line 75
    invoke-static {p1}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->access$000(Lcom/miui/blur/sdk/backdrop/BlurStyle;)I

    move-result v0

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mRadius:I

    .line 76
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p1}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->access$100(Lcom/miui/blur/sdk/backdrop/BlurStyle;)[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 78
    iget v3, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    iget-object v2, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addBlendLayer(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mBlendConfigs:Ljava/util/List;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    invoke-direct {v1, p1, p2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 4

    .line 98
    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;

    iget v1, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mRadius:I

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mBlendConfigs:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    invoke-direct {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle;-><init>(I[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->access$200()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;
    .locals 0

    .line 88
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->mRadius:I

    return-object p0
.end method
