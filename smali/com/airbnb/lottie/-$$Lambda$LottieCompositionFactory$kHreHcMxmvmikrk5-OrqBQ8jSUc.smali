.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/lang/ref/WeakReference;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$2:I

    iput-object p4, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$0:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$2:I

    iget-object p0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$kHreHcMxmvmikrk5-OrqBQ8jSUc;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromRawRes$2(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
