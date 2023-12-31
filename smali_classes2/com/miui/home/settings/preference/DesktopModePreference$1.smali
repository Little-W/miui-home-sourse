.class Lcom/miui/home/settings/preference/DesktopModePreference$1;
.super Ljava/lang/Object;
.source "DesktopModePreference.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/preference/DesktopModePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/preference/DesktopModePreference;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/preference/DesktopModePreference;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference$1;->this$0:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    iget-object p2, p0, Lcom/miui/home/settings/preference/DesktopModePreference$1;->this$0:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {p2}, Lcom/miui/home/settings/preference/DesktopModePreference;->access$000(Lcom/miui/home/settings/preference/DesktopModePreference;)Lmiuix/visual/check/VisualCheckBox;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/visual/check/VisualCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 75
    iget-object p3, p0, Lcom/miui/home/settings/preference/DesktopModePreference$1;->this$0:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {p3, p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->access$100(Lcom/miui/home/settings/preference/DesktopModePreference;Landroid/view/View;)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 76
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference$1;->this$0:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->access$000(Lcom/miui/home/settings/preference/DesktopModePreference;)Lmiuix/visual/check/VisualCheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/visual/check/VisualCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object p1, p0, Lcom/miui/home/settings/preference/DesktopModePreference$1;->this$0:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {p1}, Lcom/miui/home/settings/preference/DesktopModePreference;->access$200(Lcom/miui/home/settings/preference/DesktopModePreference;)Lmiuix/visual/check/VisualCheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/visual/check/VisualCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object p0, p0, Lcom/miui/home/settings/preference/DesktopModePreference$1;->this$0:Lcom/miui/home/settings/preference/DesktopModePreference;

    invoke-static {p0}, Lcom/miui/home/settings/preference/DesktopModePreference;->access$300(Lcom/miui/home/settings/preference/DesktopModePreference;)Lmiuix/visual/check/VisualCheckBox;

    move-result-object p0

    invoke-virtual {p0, p2}, Lmiuix/visual/check/VisualCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
