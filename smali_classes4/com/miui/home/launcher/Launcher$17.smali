.class Lcom/miui/home/launcher/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->onNewIntentWhenAlreadyOnHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 3035
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$17;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3037
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$17;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    return-void
.end method
