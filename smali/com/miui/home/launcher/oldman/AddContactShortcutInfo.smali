.class public Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;
.super Lcom/miui/home/launcher/ShortcutInfo;
.source "AddContactShortcutInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->mIntent:Landroid/content/Intent;

    const v0, 0x7f10026e

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800b6

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public handleClick(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)Z
    .locals 0

    .line 23
    iget-object p2, p0, Lcom/miui/home/launcher/oldman/AddContactShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->startActivityForCreateShortcut(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
