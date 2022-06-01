.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1521
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$5;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$2002(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)Z

    return-void
.end method
