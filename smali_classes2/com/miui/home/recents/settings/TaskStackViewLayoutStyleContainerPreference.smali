.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;
.super Landroidx/preference/Preference;
.source "TaskStackViewLayoutStyleContainerPreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackViewLayoutStyleContainerPreference"


# instance fields
.field private mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0137

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic lambda$initCheckedBox$0(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$initCheckedBox$1(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;Ljava/lang/Boolean;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public initCheckedBox()V
    .locals 3

    .line 59
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$9XKrGhEjk-uY3dW6JMgeMPGB3Jg;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$9XKrGhEjk-uY3dW6JMgeMPGB3Jg;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$1xlDvIdDAPTElHcwSZSW4165vFk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$TaskStackViewLayoutStyleContainerPreference$1xlDvIdDAPTElHcwSZSW4165vFk;-><init>(Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 36
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    .line 37
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 38
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a02dc

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVerticalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 39
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v0, 0x7f0a013a

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mHorizontalCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initCheckedBox()V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 2

    const p1, 0x7f0a013a

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a02dc

    if-eq p2, p1, :cond_0

    .line 53
    sget-object p1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged error, i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
