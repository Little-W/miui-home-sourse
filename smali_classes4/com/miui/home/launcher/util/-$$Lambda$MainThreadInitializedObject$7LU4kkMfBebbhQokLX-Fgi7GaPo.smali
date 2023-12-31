.class public final synthetic Lcom/miui/home/launcher/util/-$$Lambda$MainThreadInitializedObject$7LU4kkMfBebbhQokLX-Fgi7GaPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/-$$Lambda$MainThreadInitializedObject$7LU4kkMfBebbhQokLX-Fgi7GaPo;->f$0:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iput-object p2, p0, Lcom/miui/home/launcher/util/-$$Lambda$MainThreadInitializedObject$7LU4kkMfBebbhQokLX-Fgi7GaPo;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/util/-$$Lambda$MainThreadInitializedObject$7LU4kkMfBebbhQokLX-Fgi7GaPo;->f$0:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/miui/home/launcher/util/-$$Lambda$MainThreadInitializedObject$7LU4kkMfBebbhQokLX-Fgi7GaPo;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->lambda$get$0$MainThreadInitializedObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
