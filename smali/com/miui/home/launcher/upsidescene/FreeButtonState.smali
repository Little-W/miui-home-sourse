.class public Lcom/miui/home/launcher/upsidescene/FreeButtonState;
.super Ljava/lang/Object;
.source "FreeButtonState.java"

# interfaces
.implements Lcom/miui/home/launcher/Folder$FolderCallback;
.implements Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;
    }
.end annotation


# static fields
.field private static sTmpPos:[F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentState:Ljava/lang/String;

.field private mOwnerView:Landroid/view/View;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

.field private mStateUpdateListener:Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [F

    sput-object v0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->sTmpPos:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Landroid/view/View;Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    .line 55
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 56
    iput-object p4, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 57
    iput-object p5, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mStateUpdateListener:Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->addToggleListener(Landroid/content/Context;Lcom/miui/launcher/utils/ToggleManagerUtils$MiuiToggleChangedListener;)V

    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->refreshToggleState()V

    goto :goto_0

    :cond_0
    const-string p1, "normal"

    const-string p2, "normal_pressed"

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/FreeButtonState;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->normalToOpen()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/upsidescene/FreeButtonState;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->openToNormal()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/FreeButtonState;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private normalToOpen()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 164
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 166
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 169
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 170
    new-instance v6, Landroid/content/ComponentName;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    .line 174
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->getFolderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->getComponentNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object v0, v2

    .line 178
    :cond_2
    new-instance v2, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v2}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 179
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v4}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 181
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 182
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 183
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 188
    :cond_3
    new-instance v5, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/miui/home/launcher/ShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    .line 189
    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    goto :goto_1

    .line 191
    :cond_4
    iput-object p0, v2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    goto :goto_2

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;

    .line 136
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.MAIN"

    .line 137
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    .line 138
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10200000

    .line 139
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 141
    new-array v0, v0, [I

    .line 142
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 143
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v0, v1

    const/4 v5, 0x1

    aget v6, v0, v5

    aget v1, v0, v1

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->getWidth()I

    move-result v7

    add-int/2addr v1, v7

    aget v0, v0, v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/upsidescene/FreeButtonState$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState$3;-><init>(Lcom/miui/home/launcher/upsidescene/FreeButtonState;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :pswitch_2
    const-string v0, "open"

    const-string v1, "open_pressed"

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 198
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->refreshToggleState()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openToNormal()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    .line 123
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->refreshToggleState()V

    goto :goto_0

    :cond_1
    const-string v0, "normal"

    const-string v1, "normal_pressed"

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private refreshToggleState()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    .line 75
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->getToggleId()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->getToggleId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getStatus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "open"

    const-string v1, "open_pressed"

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "normal"

    const-string v1, "normal_pressed"

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mCurrentState:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mStateUpdateListener:Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/upsidescene/FreeButtonState$StateUpdateListener;->onStateUpdated(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    .line 302
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->getToggleId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->refreshToggleState()V

    :cond_1
    return-void
.end method

.method public deleteSelf()V
    .locals 0

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewIconHeight()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 7

    .line 237
    sget-object v0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->sTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 238
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 239
    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v5

    .line 238
    invoke-static {v2, v4, v0, v5, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    move-result v0

    .line 240
    sget-object v2, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->sTmpPos:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sget-object v4, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->sTmpPos:[F

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sget-object v5, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->sTmpPos:[F

    aget v3, v5, v3

    .line 241
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v5, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->sTmpPos:[F

    aget v1, v5, v1

    .line 242
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 240
    invoke-virtual {p1, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 245
    iget v4, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    mul-float/2addr v0, v2

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public loadItemIcons(Z)V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 5

    const-string v0, "open_to_normal"

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    new-instance v2, Lcom/miui/home/launcher/upsidescene/FreeButtonState$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState$4;-><init>(Lcom/miui/home/launcher/upsidescene/FreeButtonState;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOpen()V
    .locals 2

    const-string v0, "open"

    const-string v1, "open_pressed"

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->setFolderName(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->save()V

    :cond_0
    return-void
.end method

.method public showPreview(Z)V
    .locals 0

    return-void
.end method

.method public trigger()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mCurrentState:Ljava/lang/String;

    const-string v1, "normal"

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "normal_to_open"

    .line 88
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    new-instance v2, Lcom/miui/home/launcher/upsidescene/FreeButtonState$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState$1;-><init>(Lcom/miui/home/launcher/upsidescene/FreeButtonState;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v1, "open"

    if-ne v0, v1, :cond_2

    const-string v0, "open_to_normal"

    .line 95
    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->updateState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mOwnerView:Landroid/view/View;

    new-instance v2, Lcom/miui/home/launcher/upsidescene/FreeButtonState$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState$2;-><init>(Lcom/miui/home/launcher/upsidescene/FreeButtonState;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->mSprite:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/FreeButtonState;->normalToOpen()V

    :cond_2
    :goto_0
    return-void
.end method
