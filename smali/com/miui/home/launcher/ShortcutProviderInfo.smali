.class public Lcom/miui/home/launcher/ShortcutProviderInfo;
.super Lcom/miui/home/launcher/ItemInfo;
.source "ShortcutProviderInfo.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x7

    .line 13
    iput v0, p0, Lcom/miui/home/launcher/ShortcutProviderInfo;->itemType:I

    .line 14
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/miui/home/launcher/ShortcutProviderInfo;->spanX:I

    .line 16
    iput p1, p0, Lcom/miui/home/launcher/ShortcutProviderInfo;->spanY:I

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
