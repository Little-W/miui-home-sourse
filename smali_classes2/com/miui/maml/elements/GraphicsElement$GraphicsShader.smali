.class Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
.super Ljava/lang/Object;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GraphicsElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GraphicsShader"
.end annotation


# instance fields
.field public mColors:[I

.field private mMatrixName:Ljava/lang/String;

.field public mShader:Landroid/graphics/Shader;

.field private mShaderType:I

.field public mStops:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 669
    iput-object v1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    new-array v0, v0, [F

    .line 670
    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    const/4 v0, -0x1

    .line 673
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/GraphicsElement$1;)V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)I
    .locals 0

    .line 667
    iget p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return p0
.end method

.method static synthetic access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I
    .locals 0

    .line 667
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;
    .locals 0

    .line 667
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    return-object p1
.end method
