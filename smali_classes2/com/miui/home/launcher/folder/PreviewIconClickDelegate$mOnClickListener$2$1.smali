.class final Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2$1;
.super Ljava/lang/Object;
.source "PreviewIconClickDelegate.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->invoke()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2$1;->this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2$1;->this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->getLi()Lcom/miui/home/launcher/folder/ListenerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/folder/ListenerInfo;->onViewClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
