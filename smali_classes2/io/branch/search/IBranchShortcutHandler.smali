.class public interface abstract Lio/branch/search/IBranchShortcutHandler;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lio/branch/search/IBranchShortcutHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/IBranchShortcutHandler$a;

    invoke-direct {v0}, Lio/branch/search/IBranchShortcutHandler$a;-><init>()V

    sput-object v0, Lio/branch/search/IBranchShortcutHandler;->a:Lio/branch/search/IBranchShortcutHandler;

    return-void
.end method


# virtual methods
.method public abstract launchShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract loadShortcutDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/BranchShortcutList;)V
.end method

.method public abstract validateShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method
