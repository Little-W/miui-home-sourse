.class public final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "LauncherFolder2x2IconImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherFolder2x2IconImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherFolder2x2IconImageView.kt\ncom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1\n*L\n1#1,198:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $isAlphaHide$inlined:Z

.field final synthetic $needResetDrawable$inlined:Z

.field final synthetic this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    iput-boolean p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;->$isAlphaHide$inlined:Z

    iput-boolean p3, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;->$needResetDrawable$inlined:Z

    .line 157
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 160
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;->$needResetDrawable$inlined:Z

    if-eqz p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$resetDrawableToNormalState(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const-string p1, "animAlpha"

    .line 169
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 172
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$$inlined$let$lambda$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setDrawableAnimAlpha(F)V

    :cond_0
    return-void
.end method
