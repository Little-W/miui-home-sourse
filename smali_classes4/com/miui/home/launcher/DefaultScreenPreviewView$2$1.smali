.class Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;
.super Ljava/lang/Object;
.source "DefaultScreenPreviewView.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/DefaultScreenPreviewView$2;

.field final synthetic val$screenIndex:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DefaultScreenPreviewView$2;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;->this$1:Lcom/miui/home/launcher/DefaultScreenPreviewView$2;

    iput p2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;->val$screenIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;->this$1:Lcom/miui/home/launcher/DefaultScreenPreviewView$2;

    iget-object v0, v0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;->this$0:Lcom/miui/home/launcher/DefaultScreenPreviewView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView$2$1;->val$screenIndex:I

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v2, v1

    const p0, 0x7f110064

    invoke-virtual {v0, p0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
