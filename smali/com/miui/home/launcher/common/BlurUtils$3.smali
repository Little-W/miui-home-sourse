.class Lcom/miui/home/launcher/common/BlurUtils$3;
.super Ljava/lang/Object;
.source "BlurUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/common/BlurUtils;->blurByWindowManager(FLandroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ratio:F

.field final synthetic val$win:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;F)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/miui/home/launcher/common/BlurUtils$3;->val$win:Landroid/view/Window;

    iput p2, p0, Lcom/miui/home/launcher/common/BlurUtils$3;->val$ratio:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/common/BlurUtils$3;->val$win:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->access$100(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/common/BlurUtils$3;->val$ratio:F

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/BlurUtils;->setBlur(Ljava/lang/Object;F)V

    return-void
.end method
