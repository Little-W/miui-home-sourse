.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$GnvPj8ymqrmljReveihQ7MPzwWc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$GnvPj8ymqrmljReveihQ7MPzwWc;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$GnvPj8ymqrmljReveihQ7MPzwWc;->f$0:Z

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/CellLayout;->lambda$setEditMode$0(ZLcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
