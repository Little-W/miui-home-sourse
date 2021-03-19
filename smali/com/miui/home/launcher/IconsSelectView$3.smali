.class Lcom/miui/home/launcher/IconsSelectView$3;
.super Ljava/lang/Object;
.source "IconsSelectView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/IconsSelectView;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/IconsSelectView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/IconsSelectView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$3;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/IconsSelectView$3;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconsSelectView;->setFocusable(Z)V

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/IconsSelectView$3;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/IconsSelectView;->setFocusableInTouchMode(Z)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/IconsSelectView$3;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconsSelectView;->requestFocus()Z

    return-void
.end method
