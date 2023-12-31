.class Landroidx/preference/XMiuiSeekBarPreference$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/XMiuiSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/XMiuiSeekBarPreference;


# direct methods
.method constructor <init>(Landroidx/preference/XMiuiSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-static {v0, p1}, Landroidx/preference/XMiuiSeekBarPreference;->access$000(Landroidx/preference/XMiuiSeekBarPreference;Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/XMiuiSeekBarPreference;->access$102(Landroidx/preference/XMiuiSeekBarPreference;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-static {v1, v0}, Landroidx/preference/XMiuiSeekBarPreference;->access$102(Landroidx/preference/XMiuiSeekBarPreference;Z)Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-static {v2}, Landroidx/preference/XMiuiSeekBarPreference;->access$200(Landroidx/preference/XMiuiSeekBarPreference;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-static {v2}, Landroidx/preference/XMiuiSeekBarPreference;->access$300(Landroidx/preference/XMiuiSeekBarPreference;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-static {v1, p1}, Landroidx/preference/XMiuiSeekBarPreference;->access$000(Landroidx/preference/XMiuiSeekBarPreference;Landroid/widget/SeekBar;)V

    :cond_0
    iget-object v1, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    iget-object v2, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-static {v2}, Landroidx/preference/XMiuiSeekBarPreference;->access$400(Landroidx/preference/XMiuiSeekBarPreference;)I

    move-result v2

    iget-object v3, p0, Landroidx/preference/XMiuiSeekBarPreference$1;->this$0:Landroidx/preference/XMiuiSeekBarPreference;

    invoke-static {v3}, Landroidx/preference/XMiuiSeekBarPreference;->access$200(Landroidx/preference/XMiuiSeekBarPreference;)I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/XMiuiSeekBarPreference;->notifyDependencyChange(Z)V

    return-void
.end method
