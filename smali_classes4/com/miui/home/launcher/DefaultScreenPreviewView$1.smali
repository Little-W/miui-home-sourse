.class Lcom/miui/home/launcher/DefaultScreenPreviewView$1;
.super Ljava/lang/Object;
.source "DefaultScreenPreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DefaultScreenPreviewView;->insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

.field final synthetic val$convertView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DefaultScreenPreviewView;Landroid/view/View;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$1;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    iput-object p2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$1;->val$convertView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$1;->val$convertView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->focusTalkBackToView(Landroid/view/View;)V

    return-void
.end method
