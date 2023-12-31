.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;->f$0:I

    iput-boolean p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;->f$2:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;->f$0:I

    iget-boolean v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;->f$1:Z

    iget-boolean p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherProvider$K9YotH5KXnAI914L93lijWEvOew;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/LauncherProvider;->lambda$getHomePreView$0(IZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
