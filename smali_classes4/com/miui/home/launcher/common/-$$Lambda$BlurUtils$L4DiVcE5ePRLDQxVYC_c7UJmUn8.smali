.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtils;->lambda$fastBlurDirectly$1(Ljava/lang/Float;)V

    return-void
.end method
