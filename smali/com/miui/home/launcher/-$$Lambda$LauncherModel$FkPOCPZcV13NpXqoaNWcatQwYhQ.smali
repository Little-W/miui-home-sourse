.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$FkPOCPZcV13NpXqoaNWcatQwYhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$FkPOCPZcV13NpXqoaNWcatQwYhQ;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$FkPOCPZcV13NpXqoaNWcatQwYhQ;->f$0:Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeAppIconDatabaseWhitUICallback$6(Ljava/util/function/Consumer;)V

    return-void
.end method
