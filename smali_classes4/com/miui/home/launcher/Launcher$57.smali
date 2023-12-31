.class Lcom/miui/home/launcher/Launcher$57;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->finishLoading(ZZ)V
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

    .line 6685
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$57;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish()V
    .locals 0

    .line 6688
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$57;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$7600(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
