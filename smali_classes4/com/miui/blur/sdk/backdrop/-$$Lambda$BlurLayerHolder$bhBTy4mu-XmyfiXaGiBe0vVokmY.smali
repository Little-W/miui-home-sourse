.class public final synthetic Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;-><init>()V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    invoke-static {p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->lambda$evaluateBlurRadius$0(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)I

    move-result p0

    return p0
.end method
