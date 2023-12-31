.class public interface abstract Lcom/miui/home/launcher/allapps/SearchUiResultView;
.super Ljava/lang/Object;
.source "SearchUiResultView.java"


# virtual methods
.method public abstract getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
.end method

.method public abstract setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation
.end method
