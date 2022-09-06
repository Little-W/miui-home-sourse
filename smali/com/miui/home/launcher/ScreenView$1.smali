.class Lcom/miui/home/launcher/ScreenView$1;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$1;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView$1;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {v0}, Lcom/miui/home/launcher/ScreenView;->access$000(Lcom/miui/home/launcher/ScreenView;)V

    return-void
.end method
