.class final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LauncherFolder2x2IconImageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->preformAnimInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {v1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMAnimMax$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMIsDragingEnter$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$preformAnimInternal$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$preformAnimInternal(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V

    :cond_1
    :goto_0
    return-void
.end method
