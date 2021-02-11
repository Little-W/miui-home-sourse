.class public Lcom/miui/launcher/common/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# static fields
.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "shortcut_id"

.field private static final INTENT_CATEGORY:Ljava/lang/String; = "com.miui.home.launcher.DEEP_SHORTCUT"


# instance fields
.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    iput-object p1, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/content/ComponentName;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public hasKeyFieldsOnly()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public isDeclaredInManifest()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    return v0
.end method

.method public makeIntent()Landroid/content/Intent;
    .locals 3

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.home.launcher.DEEP_SHORTCUT"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcut_id"

    .line 46
    invoke-virtual {p0}, Lcom/miui/launcher/common/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/miui/launcher/common/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
