.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$zVoRPO5zExKIimwiWMsjAZf6x9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$zVoRPO5zExKIimwiWMsjAZf6x9E;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/global/-$$Lambda$GlobalPreinstallableFolderShortcutsAdapter$zVoRPO5zExKIimwiWMsjAZf6x9E;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->lambda$loadDrawable$0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
