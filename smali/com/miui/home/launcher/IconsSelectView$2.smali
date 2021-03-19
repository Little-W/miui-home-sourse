.class Lcom/miui/home/launcher/IconsSelectView$2;
.super Ljava/lang/Object;
.source "IconsSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$2;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView$2;->this$0:Lcom/miui/home/launcher/IconsSelectView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconsSelectView;->cancel()V

    return-void
.end method
