.class final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;
.super Ljava/lang/Object;
.source "LauncherFolder2x2IconImageView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->customTask(Lkotlin/jvm/functions/Function0;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $black:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    iput-object p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;->$black:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMIsDragingEnter$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I

    move-result v1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v2, v5}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha$default(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;ZZILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$setMAlphaAnimCount$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;I)V

    .line 131
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$customTask$1;->$black:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
