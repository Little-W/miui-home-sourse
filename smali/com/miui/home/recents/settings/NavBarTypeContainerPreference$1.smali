.class Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;
.super Ljava/lang/Object;
.source "NavBarTypeContainerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$000(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$100(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 58
    invoke-static {}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->getInstance()Lcom/miui/home/recents/settings/NavigationBarTypeSP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/settings/NavigationBarTypeSP;->isNeedShowNavGuide()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$200(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V

    .line 60
    invoke-static {}, Lcom/miui/home/recents/settings/AnalyticsUtils;->trackShowLearnGesturesDialogEvent()V

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$300(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Z)V

    .line 63
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$100(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$400(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$300(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Z)V

    .line 67
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference$1;->this$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    invoke-static {p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$500(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)Lcom/miui/home/recents/settings/NavigationBarTypeView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->access$400(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;Lcom/miui/home/recents/settings/NavigationBarTypeView;)V

    :goto_0
    return-void
.end method
