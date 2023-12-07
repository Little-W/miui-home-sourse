.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$JEeEnwYzJW8pDdzC62do2HvaA-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$JEeEnwYzJW8pDdzC62do2HvaA-A;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$JEeEnwYzJW8pDdzC62do2HvaA-A;->f$0:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->lambda$waitForUserUnlock$0(Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
