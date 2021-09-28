.class public Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;
.super Landroidx/preference/Preference;
.source "TaskStackViewLayoutStyleContainerPreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackViewLayoutStyleContainerPreference"


# instance fields
.field private mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d010a

    .line 25
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->setLayoutResource(I)V

    return-void
.end method

.method private initCheckedBox()V
    .locals 4

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v2, 0x7f0a0249

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    .line 54
    iget-object v2, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    const v3, 0x7f0a010c

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/visual/check/VisualCheckBox;

    xor-int/lit8 v3, v1, 0x1

    .line 55
    invoke-virtual {v0, v3}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 56
    invoke-virtual {v2, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 31
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    iput-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    .line 32
    iget-object p1, p0, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->mVisualCheckGroup:Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/settings/MonospacedChildViewVisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 33
    invoke-direct {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->initCheckedBox()V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 2

    const p1, 0x7f0a010c

    if-eq p2, p1, :cond_1

    const p1, 0x7f0a0249

    if-eq p2, p1, :cond_0

    .line 46
    sget-object p1, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged error, i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/TaskStackViewLayoutStyleContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->setTaskStackViewLayoutStyle(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
