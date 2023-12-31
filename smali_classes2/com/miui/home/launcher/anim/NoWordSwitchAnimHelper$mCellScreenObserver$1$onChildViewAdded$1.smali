.class final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1$onChildViewAdded$1;
.super Ljava/lang/Object;
.source "NoWordSwitchAnimHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $child:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1$onChildViewAdded$1;->$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 88
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1$onChildViewAdded$1;->$child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$doSwitchAnim(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Landroid/view/View;Z)V

    return-void
.end method
