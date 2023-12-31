.class final Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PreviewIconClickDelegate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View$OnClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->this$0:Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View$OnClickListener;
    .locals 1

    .line 18
    new-instance v0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2$1;-><init>(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;->invoke()Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method
