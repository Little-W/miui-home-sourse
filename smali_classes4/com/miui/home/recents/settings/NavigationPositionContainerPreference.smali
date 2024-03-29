.class public Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;
.super Landroidx/preference/Preference;
.source "NavigationPositionContainerPreference.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCenterCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mLeftCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mRightCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d013c

    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public initCheckedBox()V
    .locals 2

    .line 64
    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationPositionContainerPreference$rXTZSxXjyfBvDalM-LsH2X4aBuc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationPositionContainerPreference$rXTZSxXjyfBvDalM-LsH2X4aBuc;-><init>(Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;)V

    new-instance v1, Lcom/miui/home/recents/settings/-$$Lambda$NavigationPositionContainerPreference$SeG6w8_R1tT4f9jtHPH-_QDcsws;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/settings/-$$Lambda$NavigationPositionContainerPreference$SeG6w8_R1tT4f9jtHPH-_QDcsws;-><init>(Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$initCheckedBox$0$NavigationPositionContainerPreference(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/settings/NavigationUtils;->getNavigationPosition(Landroid/content/Context;)I

    move-result p0

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$initCheckedBox$1$NavigationPositionContainerPreference(Ljava/lang/Integer;)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mCenterCheckBox:Lmiuix/visual/check/VisualCheckBox;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mLeftCheckBox:Lmiuix/visual/check/VisualCheckBox;

    if-eqz v0, :cond_4

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 75
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mRightCheckBox:Lmiuix/visual/check/VisualCheckBox;

    if-eqz p0, :cond_6

    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    :cond_6
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 35
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lmiuix/visual/check/VisualCheckGroup;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    .line 36
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    invoke-virtual {p1, p0}, Lmiuix/visual/check/VisualCheckGroup;->setOnCheckedChangeListener(Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;)V

    .line 37
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    const v0, 0x7f0a028e

    invoke-virtual {p1, v0}, Lmiuix/visual/check/VisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mCenterCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 38
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    const v0, 0x7f0a028f

    invoke-virtual {p1, v0}, Lmiuix/visual/check/VisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mLeftCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 39
    iget-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mVisualCheckGroup:Lmiuix/visual/check/VisualCheckGroup;

    const v0, 0x7f0a0290

    invoke-virtual {p1, v0}, Lmiuix/visual/check/VisualCheckGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckBox;

    iput-object p1, p0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->mRightCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->initCheckedBox()V

    return-void
.end method

.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 3

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 57
    sget-object v0, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged error, i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 60
    :goto_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/recents/settings/NavigationPositionContainerPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationUtils;->setNavigationPosition(Landroid/content/Context;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a028e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
