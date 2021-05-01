.class Lcom/miui/home/launcher/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->loadFreeStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;)V
    .locals 0

    .line 2558
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$10;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2560
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$10;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherModel;->access$2200(Lcom/miui/home/launcher/LauncherModel;)V

    return-void
.end method
