.class Lcom/miui/home/launcher/SearchBar$1;
.super Landroid/util/Property;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/miui/home/launcher/SearchBar;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/miui/home/launcher/SearchBar;)Ljava/lang/Integer;
    .locals 0

    .line 91
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->getSearchBarWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBar$1;->get(Lcom/miui/home/launcher/SearchBar;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/miui/home/launcher/SearchBar;Ljava/lang/Integer;)V
    .locals 0

    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/SearchBar;->setSearchBarWidth(I)V

    .line 86
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->requestLayout()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lcom/miui/home/launcher/SearchBar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/SearchBar$1;->set(Lcom/miui/home/launcher/SearchBar;Ljava/lang/Integer;)V

    return-void
.end method
