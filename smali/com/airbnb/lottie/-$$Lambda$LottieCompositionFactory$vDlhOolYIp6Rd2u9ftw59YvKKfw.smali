.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$vDlhOolYIp6Rd2u9ftw59YvKKfw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$vDlhOolYIp6Rd2u9ftw59YvKKfw;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$vDlhOolYIp6Rd2u9ftw59YvKKfw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$vDlhOolYIp6Rd2u9ftw59YvKKfw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$vDlhOolYIp6Rd2u9ftw59YvKKfw;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$vDlhOolYIp6Rd2u9ftw59YvKKfw;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$vDlhOolYIp6Rd2u9ftw59YvKKfw;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromAsset$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
